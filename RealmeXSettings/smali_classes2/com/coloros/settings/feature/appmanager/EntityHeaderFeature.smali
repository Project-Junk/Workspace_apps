.class public Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;
.super Lcom/color/injector/adaptor/g;
.source "EntityHeaderFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "entity_header"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultLayoutId(I)I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/EntityHeaderFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d00ed

    return p1
.end method
