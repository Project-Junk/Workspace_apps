.class final Lcom/android/settings/development/CameraHal3PreferenceController$1;
.super Ljava/lang/Object;
.source "CameraHal3PreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/CameraHal3PreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/settings/development/CameraHal3PreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/CameraHal3PreferenceController;Z)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController$1;->b:Lcom/android/settings/development/CameraHal3PreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/development/CameraHal3PreferenceController$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController$1;->b:Lcom/android/settings/development/CameraHal3PreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/CameraHal3PreferenceController;->a(Lcom/android/settings/development/CameraHal3PreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/development/CameraHal3PreferenceController$1;->a:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController$1;->b:Lcom/android/settings/development/CameraHal3PreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/CameraHal3PreferenceController;->b(Lcom/android/settings/development/CameraHal3PreferenceController;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method
