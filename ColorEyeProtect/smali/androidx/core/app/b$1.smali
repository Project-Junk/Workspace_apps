.class final Landroidx/core/app/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/app/b;->a(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/app/b$a;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/core/app/b$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/b$1;->a:Landroidx/core/app/b$a;

    iput-object p2, p0, Landroidx/core/app/b$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/app/b$1;->a:Landroidx/core/app/b$a;

    iget-object p0, p0, Landroidx/core/app/b$1;->b:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/core/app/b$a;->a:Ljava/lang/Object;

    return-void
.end method
