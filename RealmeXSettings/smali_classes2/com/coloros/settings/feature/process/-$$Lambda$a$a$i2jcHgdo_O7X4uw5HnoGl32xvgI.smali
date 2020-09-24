.class public final synthetic Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:[I

.field private final synthetic f$1:I

.field private final synthetic f$2:[Landroid/os/Debug$MemoryInfo;


# direct methods
.method public synthetic constructor <init>([II[Landroid/os/Debug$MemoryInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;->f$0:[I

    iput p2, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;->f$1:I

    iput-object p3, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;->f$2:[Landroid/os/Debug$MemoryInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;->f$0:[I

    iget v1, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;->f$1:I

    iget-object v2, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$i2jcHgdo_O7X4uw5HnoGl32xvgI;->f$2:[Landroid/os/Debug$MemoryInfo;

    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-static {v0, v1, v2, p1}, Lcom/coloros/settings/feature/process/a$a;->lambda$i2jcHgdo_O7X4uw5HnoGl32xvgI([II[Landroid/os/Debug$MemoryInfo;Lcom/coloros/settings/feature/process/RunningApplications$a;)V

    return-void
.end method
