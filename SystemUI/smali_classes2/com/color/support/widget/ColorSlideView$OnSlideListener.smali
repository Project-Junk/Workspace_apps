.class public interface abstract Lcom/color/support/widget/ColorSlideView$OnSlideListener;
.super Ljava/lang/Object;
.source "ColorSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSlideListener"
.end annotation


# static fields
.field public static final SLIDE_STATUS_OFF:I = 0x0

.field public static final SLIDE_STATUS_ON:I = 0x2

.field public static final SLIDE_STATUS_START_SCROLL:I = 0x1


# virtual methods
.method public abstract onSlide(Landroid/view/View;I)V
.end method
