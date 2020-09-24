.class final Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$6;
.super Ljava/lang/Object;
.source "SimStatusInfoPreferenceController.java"

# interfaces
.implements Lcom/android/ims/e$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$6;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final connectionReady(Lcom/android/ims/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "SimStatusInfoPreferenceController"

    const-string v1, "ImsManager: connection ready. "

    .line 919
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$6;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Lcom/android/ims/e;)Lcom/android/ims/e;

    .line 921
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$6;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->o(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    return-void
.end method

.method public final connectionUnavailable()V
    .locals 2

    const-string v0, "SimStatusInfoPreferenceController"

    const-string v1, "ImsManager: connection unavailable. "

    .line 926
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$6;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->p(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    return-void
.end method
