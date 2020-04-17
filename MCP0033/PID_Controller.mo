within MCP0033;

model PID_Controller
  extends Modelica.Blocks.Examples.PID_Controller;
  annotation(Documentation(figures = {Figure(title = "Controller input and output", preferred = true, plots = {Plot(title = "Speed", identifier = "speed", curves = {Curve(y = integrator.y, legend = "Reference"), Curve(y = inertia1.w, legend = "Actual")}), Plot(title = "Controller Output", identifier = "output", curves = {Curve(y = PI.limiter.u, legend = "Input to the limiter in PI controller"), Curve(y = PI.y, legend = "Output from the PI controller")})}, caption = "In %(plot:speed) reference speed (= %(variable:integrator.y)) and the actual speed (= %(variable:inertia1.w)) are shown. As can be seen, the system initializes in steady state, since no transients are present. The inertia follows the reference speed quite good until the end of the constant speed phase. Then there is a deviation. In %(plot:output) the reason can be seen: The output of the controller (%(variable:PI.y)) is in its limits. The anti-windup compensation works reasonably, since the input to the limiter (%(variable:PI.limiter.u)) is forced back to its limit after a transient phase.")}));
end PID_Controller;
