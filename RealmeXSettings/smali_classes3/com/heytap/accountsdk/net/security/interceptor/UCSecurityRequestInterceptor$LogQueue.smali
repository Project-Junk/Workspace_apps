.class final Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;
.super Ljava/util/LinkedList;
.source "UCSecurityRequestInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LogQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$1;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 338
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/heytap/accountsdk/net/security/interceptor/UCSecurityRequestInterceptor$LogQueue;->offer(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final offer(Ljava/lang/String;)Z
    .locals 0

    .line 341
    invoke-super {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
