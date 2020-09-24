.class final Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a$1;
.super Lcom/color/support/widget/ColorClickableSpan;
.source "ColorScreenPinningSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;Landroid/content/Context;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a$1;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;

    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 333
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a$1;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$a;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "oppo.intent.action.NAVIGATION_BAR_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
