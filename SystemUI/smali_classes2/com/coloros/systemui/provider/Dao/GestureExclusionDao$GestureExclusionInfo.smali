.class public Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;
.super Ljava/lang/Object;
.source "GestureExclusionDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureExclusionInfo"
.end annotation


# instance fields
.field public mActivityDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;->this$0:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;->mActivityDisableList:Ljava/util/List;

    return-void
.end method
