.class public final La/e/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/d/b/e;)V
    .locals 0

    invoke-direct {p0}, La/e/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/e/c;
    .locals 0

    invoke-static {}, La/e/c;->h()La/e/c;

    move-result-object p0

    return-object p0
.end method
