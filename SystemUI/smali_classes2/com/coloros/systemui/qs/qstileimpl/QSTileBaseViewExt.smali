.class public Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;
.super Ljava/lang/Object;
.source "QSTileBaseViewExt.java"


# static fields
.field private static mInstance:Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;
    .locals 1

    .line 24
    sget-object v0, Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;->mInstance:Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;

    invoke-direct {v0}, Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;-><init>()V

    sput-object v0, Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;->mInstance:Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;

    .line 27
    :cond_0
    sget-object v0, Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;->mInstance:Lcom/coloros/systemui/qs/qstileimpl/QSTileBaseViewExt;

    return-object v0
.end method


# virtual methods
.method public initView()V
    .locals 0

    return-void
.end method
