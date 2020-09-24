.class final Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;
.super Ljava/lang/Object;
.source "ColorScreenPinningSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Z)V

    if-nez p1, :cond_0

    .line 109
    invoke-static {}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b()V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->a()V

    return-void
.end method

.method public static synthetic lambda$nTSFhwKFQ0Nj6qtHlzUDByOgpxw(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;->a(Z)V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 105
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 106
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/coloros/settings/feature/security/-$$Lambda$ColorScreenPinningSettings$1$nTSFhwKFQ0Nj6qtHlzUDByOgpxw;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/security/-$$Lambda$ColorScreenPinningSettings$1$nTSFhwKFQ0Nj6qtHlzUDByOgpxw;-><init>(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$1;Z)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method
