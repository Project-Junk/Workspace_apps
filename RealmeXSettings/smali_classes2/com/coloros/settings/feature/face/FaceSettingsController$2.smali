.class final Lcom/coloros/settings/feature/face/FaceSettingsController$2;
.super Ljava/lang/Object;
.source "FaceSettingsController.java"

# interfaces
.implements Lcom/coloros/settings/feature/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/FaceSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/c/a;

.field final synthetic b:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;

.field final synthetic c:Lcom/coloros/settings/feature/face/FaceSettingsController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/FaceSettingsController;Lcom/coloros/settings/feature/c/a;Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$2;->c:Lcom/coloros/settings/feature/face/FaceSettingsController;

    iput-object p2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$2;->a:Lcom/coloros/settings/feature/c/a;

    iput-object p3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$2;->b:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$2;->a:Lcom/coloros/settings/feature/c/a;

    const-string v1, "face_category"

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/c/a;->a(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController$2;->b:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;

    instance-of v1, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceForce()V

    :cond_0
    return-void
.end method
