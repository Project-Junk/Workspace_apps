.class final Lcom/android/settings/display/BrightnessLevelPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "BrightnessLevelPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/BrightnessLevelPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/display/BrightnessLevelPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;->a:Lcom/android/settings/display/BrightnessLevelPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;->a:Lcom/android/settings/display/BrightnessLevelPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->a(Lcom/android/settings/display/BrightnessLevelPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->a(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroidx/preference/Preference;)V

    return-void
.end method
