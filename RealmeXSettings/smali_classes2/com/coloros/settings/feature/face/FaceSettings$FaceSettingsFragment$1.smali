.class final Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$1;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Lcom/coloros/settings/feature/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$1;->a:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$1;->a:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->a(Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;)Lcom/coloros/settings/feature/c/a;

    move-result-object v0

    const-string v1, "face_category"

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/c/a;->a(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$1;->a:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->highlightPreferenceForce()V

    return-void
.end method
