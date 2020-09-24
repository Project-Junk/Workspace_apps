.class final Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;
.super Ljava/lang/Object;
.source "ColorLocalePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;->b:Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;B)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;-><init>(Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;)V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 221
    iget-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;->a:Z

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker$a;->b:Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;->a(Lcom/coloros/settings/feature/language/localepicker/ColorLocalePicker;)V

    :cond_0
    return-void
.end method
