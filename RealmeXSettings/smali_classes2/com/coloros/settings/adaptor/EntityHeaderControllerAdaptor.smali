.class public Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "EntityHeaderControllerAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/widget/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final sEntityHeadFeature:Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;

    sput-object v0, Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;->sEntityHeadFeature:Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultLayoutId(I)I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 31
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;->sEntityHeadFeature:Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;->getDefaultLayoutId(I)I

    move-result p1

    return p1
.end method
