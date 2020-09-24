.class final Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$2;
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

    .line 119
    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$2;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings$2;->a:Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;->b(Lcom/coloros/settings/feature/security/ColorScreenPinningSettings;Z)Z

    move-result p1

    return p1
.end method
