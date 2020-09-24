.class public Lcom/color/injector/adaptor/i;
.super Ljava/lang/Object;
.source "Module.java"


# instance fields
.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput-boolean p1, p0, Lcom/color/injector/adaptor/i;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/color/injector/adaptor/i;->mIsEnabled:Z

    return v0
.end method
