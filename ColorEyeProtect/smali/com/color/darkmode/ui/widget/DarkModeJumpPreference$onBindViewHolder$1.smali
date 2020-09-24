.class final Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->onBindViewHolder(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-static {p1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->access$getMSwitch$p(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;)Lcom/color/support/widget/ColorSwitch;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->getMOnClickListener()Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->getMOnClickListener()Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-static {p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->access$getMSwitch$p(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;)Lcom/color/support/widget/ColorSwitch;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;->onIsChecked(Lcom/color/support/widget/ColorSwitch;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->getMOnClickListener()Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->getMOnClickListener()Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-static {p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->access$getMSwitch$p(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;)Lcom/color/support/widget/ColorSwitch;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;->onIsUnChecked(Lcom/color/support/widget/ColorSwitch;)V

    :cond_3
    :goto_1
    return-void
.end method
