namespace RcDeskPilot.Dialogs
{
    using Bonsai.Core;
    using Bonsai.Core.Controls;
    using Bonsai.Core.Interfaces;
    using Microsoft.DirectX.Direct3D;
    using System;

    internal class WelcomeDialog : IFrameworkCallback, IDisposable
    {
        #region Private enums
        private enum WelcomeDialogControlIds
        {
            Static = -1,
            InfoButton,
            StartButton,
            DemoButton
        }
        #endregion

        #region Public events
        public event EventHandler StartClicked;
        public event EventHandler DemoClicked;
        #endregion

        #region Private fields
        private Dialog dialog;
        private Program owner = null;
        private bool visible = true;

        private StaticText text;
        private StaticText startText;
        private Button startButton;
        private Button demoButton;

        #endregion

        #region Public properties
        public Dialog Dialog
        {
            get { return dialog; }
        }

        /// <summary>
        /// Gets/Sets whether the dialog is visible.
        /// </summary>
        public bool Visible
        {
            get { return visible; }
            set { visible = value; }
        }
        #endregion

        #region Constructor
        /// <summary>
        /// Default constructor.
        /// </summary>
        public WelcomeDialog(Program owner)
        {
            this.owner = owner;

        }
        #endregion

        #region IDisposable Members
        /// <summary>
        /// Clean up.
        /// </summary>
        public void Dispose()
        {
        }
        #endregion

        #region Public methods
        public void Initialize()
        {
            dialog = new Dialog(Framework.Instance);
            dialog.SetFont(0, "Arial", 14, FontWeight.Normal);
            dialog.SetFont(1, "Arial", 20, FontWeight.Bold);
            dialog.SetSize(600, 400);
            dialog.SetBackgroundColors(
                new ColorValue(0.5f, 0.5f, 0.5f, 128f),
                new ColorValue(0.5f, 0.5f, 0.5f, 128f),
                new ColorValue(0, 0, 0, 128f),
                new ColorValue(0, 0, 0, 128f));

            text = dialog.AddStatic((int)WelcomeDialogControlIds.Static, "Welcome to R/C Desk Pilot.", dialog.Width / 2 - 290, 10, 580, 265);

            Element e = text[0];
            e.FontIndex = 1;
            e.textFormat = DrawTextFormat.Top | DrawTextFormat.Center | DrawTextFormat.WordBreak;

            startText = dialog.AddStatic((int)WelcomeDialogControlIds.Static,
                "Click one of the buttons below to start flying or watch the demo.",
                dialog.Width / 2 - 290, dialog.Height - 80, 580, 30);
            e = startText[0];
            e.FontIndex = 1;
            e.textFormat = DrawTextFormat.Top | DrawTextFormat.Center | DrawTextFormat.WordBreak;

            startButton = dialog.AddButton((int)WelcomeDialogControlIds.StartButton, "Start", dialog.Width / 4 - 60, dialog.Height - 40, 120, 30);
            startButton.Click += new EventHandler(startButton_Click);
            e = startButton[0];
            e.FontIndex = 1;
            e.textFormat = DrawTextFormat.VerticalCenter | DrawTextFormat.Center | DrawTextFormat.WordBreak;
            e = startButton[1];
            e.FontIndex = 1;
            e.textFormat = DrawTextFormat.VerticalCenter | DrawTextFormat.Center | DrawTextFormat.WordBreak;

            demoButton = dialog.AddButton((int)WelcomeDialogControlIds.DemoButton, "Demo", 3 * dialog.Width / 4 - 60, dialog.Height - 40, 120, 30);
            demoButton.Click += new EventHandler(demoButton_Click);
            e = demoButton[0];
            e.FontIndex = 1;
            e.textFormat = DrawTextFormat.VerticalCenter | DrawTextFormat.Center | DrawTextFormat.WordBreak;
            e = demoButton[1];
            e.FontIndex = 1;
            e.textFormat = DrawTextFormat.VerticalCenter | DrawTextFormat.Center | DrawTextFormat.WordBreak;
        }

        public void SetSize(int width, int height)
        {
            dialog.SetLocation((width - 600) / 2, (height - 400) / 2);

        }
        #endregion

        #region private event handlers
        /// <summary>
        /// Handles the click event of the start button.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void startButton_Click(object sender, EventArgs e)
        {
            Dialog.SetRefreshTime((float)FrameworkTimer.GetTime());

            StartClicked?.Invoke(this, EventArgs.Empty);
        }

        /// <summary>
        /// Handles the click event of the demo button.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void demoButton_Click(object sender, EventArgs e)
        {
            Dialog.SetRefreshTime((float)FrameworkTimer.GetTime());
            DemoClicked?.Invoke(this, EventArgs.Empty);
        }
        #endregion

        #region IFrameworkCallback Members
        public void OnFrameMove(Device device, double totalTime, float elapsedTime)
        {

        }

        public void OnFrameRender(Device device, double totalTime, float elapsedTime)
        {
            if (visible)
                dialog.OnRender(elapsedTime);
        }
        #endregion
    }
}
