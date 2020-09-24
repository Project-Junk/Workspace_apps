.class final Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$2;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/c/a$a;

.field final synthetic b:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;Lcom/coloros/settings/feature/c/a$a;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$2;->b:Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$2;->a:Lcom/coloros/settings/feature/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettings$FaceSettingsFragment$2;->a:Lcom/coloros/settings/feature/c/a$a;

    invoke-interface {v0}, Lcom/coloros/settings/feature/c/a$a;->onUpdate()V

    return-void
.end method
