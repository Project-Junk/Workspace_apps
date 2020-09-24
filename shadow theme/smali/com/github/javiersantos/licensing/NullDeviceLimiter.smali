.class public Lcom/github/javiersantos/licensing/NullDeviceLimiter;
.super Ljava/lang/Object;
.source "NullDeviceLimiter.java"

# interfaces
.implements Lcom/github/javiersantos/licensing/DeviceLimiter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceAllowed(Ljava/lang/String;)I
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .line 28
    const/16 v0, 0xb8a

    return v0
.end method
