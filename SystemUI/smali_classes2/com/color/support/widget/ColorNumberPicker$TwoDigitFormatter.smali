.class Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "ColorNumberPicker.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;

.field final synthetic this$0:Lcom/color/support/widget/ColorNumberPicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    .line 1991
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1987
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 1988
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 1992
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 1993
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 1

    .line 2014
    new-instance v0, Ljava/util/Formatter;

    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, p0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 0

    .line 1997
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 2

    .line 2007
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2008
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2009
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    const-string v1, "%02d"

    invoke-virtual {p1, v1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2010
    iget-object p0, p0, Lcom/color/support/widget/ColorNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
