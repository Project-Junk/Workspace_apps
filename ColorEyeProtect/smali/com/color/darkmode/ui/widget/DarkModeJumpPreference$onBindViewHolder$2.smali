.class final Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$2;
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

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$2;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$2;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$2;->this$0:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/color/darkmode/ui/activity/DarkModeApplicationManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
