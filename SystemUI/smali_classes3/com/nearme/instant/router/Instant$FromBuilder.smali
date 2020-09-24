.class public abstract Lcom/nearme/instant/router/Instant$FromBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/instant/router/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FromBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Ljava/lang/String;
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/instant/router/Instant$FromBuilder;
.end method

.method public abstract setScene(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$FromBuilder;
.end method

.method public abstract setTraceId(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$FromBuilder;
.end method
