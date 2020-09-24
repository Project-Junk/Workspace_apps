.class Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$HolderClass;
.super Ljava/lang/Object;
.source "QuickAppRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolderClass"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$1;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$HolderClass;->INSTANCE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;
    .locals 1

    .line 53
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$HolderClass;->INSTANCE:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    return-object v0
.end method
