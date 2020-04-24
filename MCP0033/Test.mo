within MCP0033;

model Test
  Real x(start = 1, unit = "m") = sin(time);
  Real y(start = 1, unit = "m") = cos(time);
equation

  annotation(experiment(StopTime = 5.0),
    Documentation(
      figures = {
    Figure(
        title="Figure with no group",
        identifier="4afa9",
        plots={
            Plot(curves={Curve(y=x)})},
        caption="A figure may have an empty group."),
    Figure(
        identifier="c6dd5",
        plots={
            Plot(curves={Curve(y=x)})},
        caption="A figure may have an empty title."),
    Figure(
        title="Different x-axis range",
        identifier="27b52",
        group="Multiple Plots",
        plots={
            Plot(curves={Curve(y=x)}),
            Plot(
                curves={Curve(y=y)},
                x=Axis(min=1000000, max=2000000, unit="us"))},
        caption="The plots in a figure can have different ranges for their respective axis."),
    Figure(
        title="Fixed x-range",
        identifier="8d098",
        group="Axis",
        plots={
            Plot(
                curves={Curve(y=x)},
                x=Axis(min=1, max=2, unit="s"))},
        caption="A plot with a fixed x-range. The unit must be specified when specifying an axis range."),
    Figure(
        title="Fixed y-range",
        identifier="9335d",
        group="Axis",
        plots={
            Plot(
                curves={Curve(y=x)},
                y=Axis(min=-0.5, max=0.5, unit="m"))},
        caption="A plot with a fixed y-range. The unit must be specified when specifying an axis range."),
    Figure(
        title="Fixed y-range with changed unit",
        identifier="719f3",
        group="Axis",
        plots={
            Plot(
                curves={Curve(y=x)},
                y=Axis(min=-100, max=100, unit="cm"))},
        caption="A plot with a fixed y-range. The unit must be specified when specifying an axis range."),
    Figure(
        title="x(t) and (x(t), y(t))",
        identifier="03671",
        group="Multiple Plots",
        plots={
            Plot(curves={Curve(y=x, legend="x(t)")}),
            Plot(curves={Curve(x=x, y=y, legend="(x(t), y(t))")})},
        caption="It's possible to have curves with a variable as a function of time %[x(t)](variable:x) as well as parametric curves (%[x(t)](variable:x), %[y(t)](variable:y))"),
    Figure(
        title="Preferred figure",
        identifier="105c9",
        group="Preferred Figures",
        preferred=true,
        plots={
            Plot(curves={Curve(y=x)})},
        caption="A figure with preferred=true should be shown automatically when the class is simulated."),
    Figure(
        title="Caption with plot and variable links",
        identifier="b014d",
        group="Multiple Plots",
        plots={
            Plot(
                title="Plot of x",
                identifier="plot-x",
                curves={Curve(y=x)}),
            Plot(
                title="Plot of y",
                identifier="plot-y",
                curves={Curve(y=y)},
                x=Axis(unit="us"))},
        caption=
"
A caption can have multiple paragraphs and contain different links and variable replacements.  Empty lines can be inserted before and after paragraphs for improved readability.

The value of %(variable:x) at the end of simulation is %{x}.
Plot links: %(plot:plot-x), %[first plot](plot:plot-x)
Variable links: %(variable:y), %[y(t)](variable:y)
Modelica URI: %(modelica:///Modelica.Blocks), %[link](modelica:///Modelica.Blocks).
Generic URI: %(http://www.modelica.org), %[link](http://www.modelica.org).
"
    ),
    Figure(
        title="Empty legend",
        identifier="e8011",
        group="Multiple Plots",
        plots={
            Plot(
                title="No Legend",
                curves={Curve(y=x, legend=""), Curve(y=y, legend="")}),
            Plot(
                title="One Legend",
                curves={Curve(y=x, legend="x legend"), Curve(y=y, legend="")})},
        caption="Providing the empty string as legend means that the curve shall be omitted from the plot legend."),
    Figure(
        title="Autoscale x with changed unit",
        identifier="e1bbb",
        group="Axis",
        plots={
            Plot(
                curves={Curve(y=x)},
                x=Axis(unit="ms"))},
        caption="Autoscaling can be used in combination with changing the axis display unit"),
    Figure(
        title="Another preferred plot",
        identifier="c52eb",
        group="Preferred Figures",
        preferred=true,
        plots={
            Plot(curves={Curve(y=x)})},
        caption="A figure annotation can have multiple preferred plots and they are all expected to be shown automatically when the class is simulated.")}));
end Test;
