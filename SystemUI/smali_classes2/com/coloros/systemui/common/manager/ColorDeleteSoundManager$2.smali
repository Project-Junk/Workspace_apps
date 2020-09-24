.class Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$2;
.super Ljava/lang/Object;
.source "ColorDeleteSoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$2;->this$0:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$2;->this$0:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->access$102(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;Z)Z

    return-void
.end method
