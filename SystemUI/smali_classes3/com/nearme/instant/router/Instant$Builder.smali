.class public abstract Lcom/nearme/instant/router/Instant$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/instant/router/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/nearme/instant/router/Instant$Req;
.end method

.method public abstract putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract putStat(Ljava/lang/String;Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract setCallback(Lcom/nearme/instant/router/callback/Callback;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract setExtra(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract setFrom(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract setPackage(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract setPage(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract setPath(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract setRequestUrl(Ljava/lang/String;)Lcom/nearme/instant/router/Instant$Builder;
.end method

.method public abstract signAsPlatform()Lcom/nearme/instant/router/Instant$Builder;
.end method
