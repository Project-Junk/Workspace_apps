.class final Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;->onRemoveCompleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a$1;->a:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a$1;->a:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;->a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;)Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->b(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V

    return-void
.end method
