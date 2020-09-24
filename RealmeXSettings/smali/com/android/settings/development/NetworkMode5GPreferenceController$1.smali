.class final Lcom/android/settings/development/NetworkMode5GPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "NetworkMode5GPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/NetworkMode5GPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/development/NetworkMode5GPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/NetworkMode5GPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController$1;->a:Lcom/android/settings/development/NetworkMode5GPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController$1;->a:Lcom/android/settings/development/NetworkMode5GPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/NetworkMode5GPreferenceController;->a(Lcom/android/settings/development/NetworkMode5GPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/development/NetworkMode5GPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
