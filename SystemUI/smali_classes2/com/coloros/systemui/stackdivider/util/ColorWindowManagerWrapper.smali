.class public Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;
.super Ljava/lang/Object;
.source "ColorWindowManagerWrapper.java"


# static fields
.field private static final sInstance:Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;

    invoke-direct {v0}, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;-><init>()V

    sput-object v0, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;->sInstance:Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;
    .locals 1

    .line 33
    sget-object v0, Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;->sInstance:Lcom/coloros/systemui/stackdivider/util/ColorWindowManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getRotation(Landroid/content/Context;)I
    .locals 0

    .line 37
    const-class p0, Landroid/view/WindowManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 41
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method
