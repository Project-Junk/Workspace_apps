.class public Lcom/coloros/systemui/qs/helper/ColorQSFontHelper$TextType;
.super Ljava/lang/Object;
.source "ColorQSFontHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextType"
.end annotation


# static fields
.field public static final QS_COLOR_CLOCK_SIZE:I = 0x2

.field public static final QS_COLOR_SECURITY_SIZE:I = 0x4

.field public static final QS_COLOR_WEATHER_SIZE:I = 0x3

.field public static final QS_FOOTER_CARRIER:I = 0x1

.field public static final QS_FOOTER_DATE:I


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper$TextType;->this$0:Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
