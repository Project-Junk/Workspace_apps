.class public final Lcom/android/ims/f;
.super Ljava/lang/Object;
.source "ImsMultiEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/f$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/ims/internal/IImsMultiEndpoint;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsMultiEndpoint;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImsMultiEndpoint"

    const-string v1, "ImsMultiEndpoint created"

    .line 68
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/android/ims/f;->a:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-void
.end method
