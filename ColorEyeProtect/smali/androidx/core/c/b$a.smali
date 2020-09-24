.class public Landroidx/core/c/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Landroidx/core/c/b$b;


# direct methods
.method public constructor <init>(I[Landroidx/core/c/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/c/b$a;->a:I

    iput-object p2, p0, Landroidx/core/c/b$a;->b:[Landroidx/core/c/b$b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Landroidx/core/c/b$a;->a:I

    return p0
.end method

.method public b()[Landroidx/core/c/b$b;
    .locals 0

    iget-object p0, p0, Landroidx/core/c/b$a;->b:[Landroidx/core/c/b$b;

    return-object p0
.end method
