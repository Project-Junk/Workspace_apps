.class public final enum Lcom/coloros/anim/c/b/p$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/anim/c/b/p$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/anim/c/b/p$b;

.field public static final enum b:Lcom/coloros/anim/c/b/p$b;

.field public static final enum c:Lcom/coloros/anim/c/b/p$b;

.field private static final synthetic d:[Lcom/coloros/anim/c/b/p$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/anim/c/b/p$b;

    const-string v1, "MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/anim/c/b/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/anim/c/b/p$b;->a:Lcom/coloros/anim/c/b/p$b;

    new-instance v0, Lcom/coloros/anim/c/b/p$b;

    const-string v1, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/coloros/anim/c/b/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/anim/c/b/p$b;->b:Lcom/coloros/anim/c/b/p$b;

    new-instance v0, Lcom/coloros/anim/c/b/p$b;

    const-string v1, "BEVEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/coloros/anim/c/b/p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/anim/c/b/p$b;->c:Lcom/coloros/anim/c/b/p$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/coloros/anim/c/b/p$b;

    sget-object v1, Lcom/coloros/anim/c/b/p$b;->a:Lcom/coloros/anim/c/b/p$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/anim/c/b/p$b;->b:Lcom/coloros/anim/c/b/p$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coloros/anim/c/b/p$b;->c:Lcom/coloros/anim/c/b/p$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coloros/anim/c/b/p$b;->d:[Lcom/coloros/anim/c/b/p$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/anim/c/b/p$b;
    .locals 1

    const-class v0, Lcom/coloros/anim/c/b/p$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/c/b/p$b;

    return-object p0
.end method

.method public static values()[Lcom/coloros/anim/c/b/p$b;
    .locals 1

    sget-object v0, Lcom/coloros/anim/c/b/p$b;->d:[Lcom/coloros/anim/c/b/p$b;

    invoke-virtual {v0}, [Lcom/coloros/anim/c/b/p$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/anim/c/b/p$b;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Paint$Join;
    .locals 1

    sget-object v0, Lcom/coloros/anim/c/b/p$1;->b:[I

    invoke-virtual {p0}, Lcom/coloros/anim/c/b/p$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
