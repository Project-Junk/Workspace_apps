.class public Lcom/coloros/anim/c/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/coloros/anim/c/c;


# instance fields
.field private final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/anim/c/c;

    invoke-direct {v0}, Lcom/coloros/anim/c/c;-><init>()V

    sput-object v0, Lcom/coloros/anim/c/c;->a:Lcom/coloros/anim/c/c;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/c/c;->b:Landroid/util/LruCache;

    return-void
.end method

.method public static a()Lcom/coloros/anim/c/c;
    .locals 1

    sget-object v0, Lcom/coloros/anim/c/c;->a:Lcom/coloros/anim/c/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/coloros/anim/a;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/c/c;->b:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/coloros/anim/a;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/c/c;->b:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
