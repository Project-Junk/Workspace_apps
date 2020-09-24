.class public final Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$ColorDeleteSoundManagerHolder;
.super Ljava/lang/Object;
.source "ColorDeleteSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorDeleteSoundManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;-><init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$1;)V

    sput-object v0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$ColorDeleteSoundManagerHolder;->INSTANCE:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
