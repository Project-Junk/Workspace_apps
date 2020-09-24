.class public Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;
.super Ljava/lang/Object;
.source "NotificationClickDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationClickDispatcher"

.field private static final sInstance:Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;-><init>()V

    sput-object v0, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->sInstance:Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->mListeners:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;
    .locals 1

    .line 32
    sget-object v0, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->sInstance:Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;

    return-object v0
.end method

.method static synthetic lambda$dispatchOnClick$0(ZLcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p1, p0}, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;->onClick(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchOnClick(Z)V
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->mListeners:Ljava/util/Set;

    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationClickDispatcher$j8idOc0MpOxdtnNTQcTVYfNhXQw;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/notification/helper/-$$Lambda$NotificationClickDispatcher$j8idOc0MpOxdtnNTQcTVYfNhXQw;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeListener(Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/NotificationClickDispatcher;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
