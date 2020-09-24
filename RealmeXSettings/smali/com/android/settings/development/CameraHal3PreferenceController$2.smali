.class final Lcom/android/settings/development/CameraHal3PreferenceController$2;
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

    .line 87
    iput-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController$2;->b:Lcom/android/settings/development/CameraHal3PreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/development/CameraHal3PreferenceController$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 90
    iget-boolean p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController$2;->a:Z

    invoke-static {p1}, Lcom/android/settings/development/CameraHal3PreferenceController;->a(Z)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController$2;->b:Lcom/android/settings/development/CameraHal3PreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/CameraHal3PreferenceController;->c(Lcom/android/settings/development/CameraHal3PreferenceController;)V

    return-void
.end method
