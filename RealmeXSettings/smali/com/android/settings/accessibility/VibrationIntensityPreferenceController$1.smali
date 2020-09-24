.class final Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;
.super Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$a;
.source "VibrationIntensityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;->a:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;->a:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->access$000(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
