.class Lcom/color/support/widget/ColorNumberPicker$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field final b:[Ljava/lang/Object;

.field c:Ljava/util/Formatter;

.field final synthetic d:Lcom/color/support/widget/ColorNumberPicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$h;->d:Lcom/color/support/widget/ColorNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$h;->a:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$h;->b:[Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker$h;->a(Ljava/util/Locale;)V

    return-void
.end method

.method private a(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker$h;->b(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$h;->c:Ljava/util/Formatter;

    return-void
.end method

.method private b(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 1

    new-instance v0, Ljava/util/Formatter;

    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$h;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$h;->b:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$h;->a:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$h;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$h;->c:Ljava/util/Formatter;

    const-string v0, "%02d"

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$h;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$h;->c:Ljava/util/Formatter;

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
