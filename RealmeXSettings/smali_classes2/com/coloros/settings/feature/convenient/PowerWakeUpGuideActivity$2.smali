.class final Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$2;
.super Ljava/lang/Object;
.source "PowerWakeUpGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$2;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$2;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "disable_google_asssist_power_wakeup"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$2;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;Landroid/view/View;)V

    return-void
.end method
