namespace RCSim.AirplaneParts
{
    using Bonsai.Objects;
    using Bonsai.Objects.Meshes;
    using Microsoft.DirectX;
    using Microsoft.DirectX.Direct3D;
    using System;

    public class Elevator : GameObject, IDisposable
    {
        public Elevator()
        {
            this.Mesh = new XMesh("/data/cessna/cessna_elevator.x");
            this.Position = new Vector3(0.0f, 0.0f, 5.7f);
        }

        public override void Dispose()
        {
            if (this.Mesh != null)
            {
                this.Mesh.Dispose();
                this.Mesh = null;
            }
        }

        public override void OnFrameMove(Device device, double totalTime, float elapsedTime)
        {
            this.RotateXAngle = (float)Math.Sin(totalTime);

            base.OnFrameMove(device, totalTime, elapsedTime);
        }
    }
}
