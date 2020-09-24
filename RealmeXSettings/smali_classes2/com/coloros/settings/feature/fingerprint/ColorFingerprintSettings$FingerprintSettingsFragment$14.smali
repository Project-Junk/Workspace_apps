.class Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$14;
.super Ljava/lang/Object;
.source "ColorFingerprintSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0

    .line 1377
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$14;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange preference="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "newValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintSettingsFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1382
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1dd9ef7f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "hide_app_shortcut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 1384
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$14;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$1900(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$14;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$1900(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1385
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$14;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "hide_app_shortcut_finger"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1386
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment$14;->this$0:Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;->access$000(Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings$FingerprintSettingsFragment;J)V

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1
.end method
