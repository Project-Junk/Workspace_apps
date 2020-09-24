.class public Lcom/coloros/systemui/volume/KeyguardToast;
.super Ljava/lang/Object;
.source "KeyguardToast.java"


# static fields
.field private static sInstance:Lcom/coloros/systemui/volume/KeyguardToast;


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/volume/KeyguardToast;
    .locals 1

    .line 29
    sget-object v0, Lcom/coloros/systemui/volume/KeyguardToast;->sInstance:Lcom/coloros/systemui/volume/KeyguardToast;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/coloros/systemui/volume/KeyguardToast;

    invoke-direct {v0}, Lcom/coloros/systemui/volume/KeyguardToast;-><init>()V

    sput-object v0, Lcom/coloros/systemui/volume/KeyguardToast;->sInstance:Lcom/coloros/systemui/volume/KeyguardToast;

    .line 32
    :cond_0
    sget-object v0, Lcom/coloros/systemui/volume/KeyguardToast;->sInstance:Lcom/coloros/systemui/volume/KeyguardToast;

    return-object v0
.end method


# virtual methods
.method public cancelToast()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    .line 44
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    .line 46
    iget-object p1, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x7da

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 47
    iget-object p1, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 48
    iget-object p1, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p3, 0x80000

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/volume/KeyguardToast;->mToast:Landroid/widget/Toast;

    return-object p0
.end method
