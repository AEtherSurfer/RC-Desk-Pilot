namespace RCSim
{
    using Bonsai.Objects;
    using Bonsai.Objects.Meshes;
    using Microsoft.DirectX;
    using Microsoft.DirectX.Direct3D;
    using System;
    using System.Collections.Generic;

    internal class Birds : IDisposable
    {
        internal class Bird : GameObject
        {
            public int Number;
            public Vector3 Velocity;
            public Vector3 Acceleration;
            public Vector3 Target;
            public List<Bird> Birds = null;
            public bool Update = true;
            public bool Scared = false;
            public float UpdateElapsed = 0f;
            private float roll = 0;
            private float speed = 3f;
            private float acc = 3f;

            public Bird(int number)
            {
                this.Number = number;

                var mesh = new AnimatedXMesh("data/bird.x");
                mesh.GameObject = this;
                mesh.SetTrackSpeed(0, 2.9f + ((number % 10) * 0.2f));

                this.Position = new Vector3((number % 10), 5f + 0.5f * number % 6, ((number + 5) % 10) * number / 20f + 50f);
                this.Velocity = new Vector3(1, 0, 0);
                this.Mesh = mesh;
                this.Scale = new Vector3(0.0005f, 0.0005f, 0.0005f);
            }

            public override void Dispose()
            {
                base.Dispose();
            }

            public void OnFrameMove(Device device, double totalTime, float elapsedTime, int targetBird)
            {
                this.Scared = false;

                if (this.Update)
                {
                    this.speed = 3f;
                    this.acc = 3f;
                    this.Acceleration = this.Target - this.Position;

                    if (this.Number == targetBird)
                    {
                        if (this.Target.Y == 0.0f && this.Acceleration.LengthSq() > 100)
                        {
                            this.Acceleration = new Vector3(this.Target.X, 10f, this.Target.Z) - this.Position;
                        }
                    }
                    else
                    {
                        foreach (Bird bird in this.Birds)
                        {
                            if (bird.Number != this.Number)
                            {
                                Vector3 vDistance = bird.Position - this.Position;

                                if (vDistance.LengthSq() < 0.5f)
                                {
                                    this.Acceleration += this.Position - bird.Position;
                                }
                            }
                        }
                    }

                    if (RCSim.Birds.ScareCrow != null)
                    {
                        Vector3 vDistance = RCSim.Birds.ScareCrow.Position - this.Position;

                        if (vDistance.LengthSq() < 100f)
                        {
                            this.Acceleration = this.Position - RCSim.Birds.ScareCrow.Position;

                            if (Position.Y < 1.0f)
                            {
                                Acceleration.Y = 1.0f;
                            }

                            this.speed = 6f;
                            this.acc = 6f;
                            this.Scared = true;
                        }
                    }

                    this.Acceleration.Normalize();
                }

                this.Velocity += this.acc * this.Acceleration * elapsedTime;
                this.Velocity.Normalize();

                this.Position += elapsedTime * this.speed * this.Velocity;

                if (Position.Y < 0)
                {
                    this.Position = new Vector3(this.Position.X, 0, this.Position.Z);
                }

                if (this.Update)
                {
                    // Determine roll
                    Vector3 left = Vector3.Cross(Velocity, Up);
                    this.roll -= (Vector3.Dot(left, this.Acceleration) + this.roll) * this.UpdateElapsed;

                    if (this.roll < -1)
                    {
                        this.roll = -1f;
                    }
                    else if (this.roll > 1)
                    {
                        this.roll = 1f;
                    }

                    this.YawPitchRoll = new Vector3((float)Math.Atan2(this.Velocity.Z, -this.Velocity.X) + (float)Math.PI / 2, this.Velocity.Y / this.speed, this.roll);
                    this.Update = false;
                }


                base.OnFrameMove(device, totalTime, elapsedTime);
            }
        }

        #region Private fields
        private List<Bird> birds = new List<Bird>();
        private double lastUpdate = -10.0;
        private double lastMoveUpdate = -10.0;
        private Random rnd = new Random();
        private int nBirds = 100;
        private int targetBird = 0;
        #endregion

        /// <summary>
        /// Gets/Sets the scarecrow
        /// </summary>
        public static GameObject ScareCrow
        {
            get;
            set;
        }


        public bool Random
        {
            get;
            set;
        }

        public bool TargetReached
        {
            get { return (this.birds[this.targetBird].Position - this.birds[this.targetBird].Target).LengthSq() < 2.0f; }
        }

        public bool Scared
        {
            get;
            set;
        }

        #region Constructor
        public Birds(int nBirds)
        {
            this.nBirds = nBirds;

            for (int i = 0; i < nBirds; i++)
            {
                this.birds.Add(new Bird(i));
            }

            foreach (Bird bird in birds)
            {
                bird.Birds = birds;
            }

            this.targetBird = 0;
            this.birds[0].Target = new Vector3(0f, 10f, 20f);
        }
        #endregion

        #region IDisposable Members
        /// <summary>
        /// Clean up.
        /// </summary>
        public void Dispose()
        {
            foreach (Bird bird in birds)
            {
                bird.Dispose();
            }

            birds.Clear();
        }
        #endregion

        #region Public methods
        public void SetRandomTarget()
        {
            this.targetBird = this.rnd.Next(this.nBirds);
            this.birds[this.targetBird].Target = new Vector3((float)rnd.Next(200) - 100f, (float)(this.rnd.Next(5, 10)), (float)this.rnd.Next(200) - 100f);
        }

        public void SetTarget(Vector3 target)
        {
            this.targetBird = this.rnd.Next(this.nBirds);
            this.birds[this.targetBird].Target = target;
        }
        #endregion

        #region IFrameworkCallback Members
        public void OnFrameMove(Device device, double totalTime, float elapsedTime)
        {
            int nScared = 0;

            if (this.Random && (totalTime > this.lastUpdate + 10.0))
            {
                this.SetRandomTarget();
                this.lastUpdate = totalTime;
            }

            if (totalTime > this.lastMoveUpdate + 0.1f)
            {
                foreach (Bird bird in this.birds)
                {
                    bird.Update = true;
                    bird.UpdateElapsed = (float)(totalTime - this.lastMoveUpdate);
                }

                this.lastMoveUpdate = totalTime;
            }

            foreach (Bird bird in this.birds)
            {
                if (bird.Number != this.targetBird)
                {
                    bird.Target = this.birds[this.targetBird].Position;
                }

                bird.OnFrameMove(device, totalTime, elapsedTime, this.targetBird);

                if (bird.Scared)
                {
                    nScared++;
                }
            }

            this.Scared = nScared > nBirds / 2;
        }

        public void OnFrameRender(Device device, double totalTime, float elapsedTime)
        {
            foreach (Bird bird in this.birds)
            {
                bird.OnFrameRender(device, totalTime, elapsedTime);
            }
        }
        #endregion
    }
}
