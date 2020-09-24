.class final Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;
.super Ljava/lang/Object;
.source "ColorTrustedCredentialsSettings.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;->a:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;->a:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->d(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;->a:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->e(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;->a:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->d(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings$e;->a:Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;->e(Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
