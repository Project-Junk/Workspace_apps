.class public Lcom/oppo/weatherservicesdk/model/WeatherResponse;
.super Ljava/lang/Object;
.source "WeatherResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JsonResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJsonResult;"
        }
    .end annotation
.end field

.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public mRequestID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "TJsonResult;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->mRequestID:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->errorCode:I

    .line 20
    iput-object p3, p0, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->errorMessage:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/oppo/weatherservicesdk/model/WeatherResponse;->data:Ljava/lang/Object;

    return-void
.end method
