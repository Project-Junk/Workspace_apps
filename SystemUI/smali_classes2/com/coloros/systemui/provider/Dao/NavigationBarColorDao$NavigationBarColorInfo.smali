.class public Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;
.super Ljava/lang/Object;
.source "NavigationBarColorDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationBarColorInfo"
.end annotation


# instance fields
.field public mActivityColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDefColor:Ljava/lang/String;

.field public mPalette:Ljava/lang/String;

.field public mPkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->this$0:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityList:Ljava/util/List;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityColorList:Ljava/util/List;

    return-void
.end method
