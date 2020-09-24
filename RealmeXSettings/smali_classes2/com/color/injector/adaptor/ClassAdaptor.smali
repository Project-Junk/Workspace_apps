.class public Lcom/color/injector/adaptor/ClassAdaptor;
.super Lcom/color/injector/adaptor/a;
.source "ClassAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/color/injector/adaptor/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassAdaptor"


# instance fields
.field private mOwner:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/color/injector/adaptor/a;-><init>()V

    return-void
.end method

.method public static bindAdaptor(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    return-void
.end method

.method public static bindFeature(Lcom/color/injector/adaptor/ClassAdaptor;)V
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/color/injector/adaptor/ClassAdaptor;",
            ">;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 43
    sget-object p0, Lcom/color/injector/adaptor/ClassAdaptor;->TAG:Ljava/lang/String;

    const-string v0, "getAdaptor: adaptorClass is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 49
    sget-object v1, Lcom/color/injector/adaptor/ClassAdaptor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAdaptor: get instance failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to invoke "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static releaseAllFeature()V
    .locals 0

    .line 81
    invoke-static {}, Lcom/color/injector/adaptor/b;->a()V

    return-void
.end method

.method public static releaseFeature(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/color/injector/adaptor/g;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lcom/color/injector/adaptor/b;->b(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/color/injector/adaptor/ClassAdaptor;->mOwner:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/color/injector/adaptor/ClassAdaptor;->init()Z

    return-void
.end method

.method public getOwner()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/color/injector/adaptor/ClassAdaptor;->mOwner:Ljava/lang/Object;

    return-object v0
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/color/injector/adaptor/ClassAdaptor;->mOwner:Ljava/lang/Object;

    return-void
.end method
