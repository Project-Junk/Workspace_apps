.class public Lcom/github/javiersantos/licensing/StrictPolicy;
.super Ljava/lang/Object;
.source "StrictPolicy.java"

# interfaces
.implements Lcom/github/javiersantos/licensing/Policy;


# instance fields
.field private mLastResponse:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0xc48

    iput v0, p0, Lcom/github/javiersantos/licensing/StrictPolicy;->mLastResponse:I

    .line 34
    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 2

    .line 56
    iget v0, p0, Lcom/github/javiersantos/licensing/StrictPolicy;->mLastResponse:I

    const/16 v1, 0xb8a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public processServerResponse(ILcom/github/javiersantos/licensing/ResponseData;)V
    .locals 0
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/github/javiersantos/licensing/ResponseData;

    .line 46
    iput p1, p0, Lcom/github/javiersantos/licensing/StrictPolicy;->mLastResponse:I

    .line 47
    return-void
.end method
