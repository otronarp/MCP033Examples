within MCP0033;

model Oscillator
  extends Modelica.Mechanics.Translational.Examples.Oscillator;
  annotation(Documentation(figures = {Figure(title = "Position oscillations", preferred = true, plots = {Plot(curves = {Curve(y = mass1.s, legend = "Without damping"), Curve(y = mass2.s, legend = "With damping")}, y = Axis(label = ""))}, caption = "A spring - mass system is a mechanical oscillator. If no damping is included and the system is excited at resonance frequency infinite amplitudes will result. The resonant frequency is given by omega_res = sqrt(c / m), which in this example is %{sine1.freqHz}.")}));
end Oscillator;
