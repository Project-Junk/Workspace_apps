.class public abstract La/d/b/a;
.super Ljava/lang/Object;

# interfaces
.implements La/f/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/b/a$a;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:La/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, La/d/b/a$a;->a()La/d/b/a$a;

    move-result-object v0

    sput-object v0, La/d/b/a;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, La/d/b/a;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, La/d/b/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/d/b/a;->receiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0, p1}, La/f/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0, p1}, La/f/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public compute()La/f/b;
    .locals 1

    iget-object v0, p0, La/d/b/a;->reflected:La/f/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/d/b/a;->computeReflected()La/f/b;

    move-result-object v0

    iput-object v0, p0, La/d/b/a;->reflected:La/f/b;

    :cond_0
    return-object v0
.end method

.method protected abstract computeReflected()La/f/b;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La/d/b/a;->receiver:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method

.method public getOwner()La/f/d;
    .locals 0

    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method

.method public getParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->getParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getReflected()La/f/b;
    .locals 1

    invoke-virtual {p0}, La/d/b/a;->compute()La/f/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, La/d/b;

    invoke-direct {p0}, La/d/b;-><init>()V

    throw p0
.end method

.method public getReturnType()La/f/k;
    .locals 0

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->getReturnType()La/f/k;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()La/f/l;
    .locals 0

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->getVisibility()La/f/l;

    move-result-object p0

    return-object p0
.end method

.method public isAbstract()Z
    .locals 0

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->isAbstract()Z

    move-result p0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->isFinal()Z

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .locals 0

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .locals 0

    invoke-virtual {p0}, La/d/b/a;->getReflected()La/f/b;

    move-result-object p0

    invoke-interface {p0}, La/f/b;->isSuspend()Z

    move-result p0

    return p0
.end method
