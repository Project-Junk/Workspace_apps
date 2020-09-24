.class public final Lcom/android/settingslib/widget/d;
.super Ljava/lang/Object;
.source "AppEntityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/widget/d$a;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iget-object v0, p1, Lcom/android/settingslib/widget/d$a;->a:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object v0, p0, Lcom/android/settingslib/widget/d;->a:Landroid/graphics/drawable/Drawable;

    .line 2081
    iget-object v0, p1, Lcom/android/settingslib/widget/d$a;->b:Ljava/lang/CharSequence;

    .line 73
    iput-object v0, p0, Lcom/android/settingslib/widget/d;->b:Ljava/lang/CharSequence;

    .line 3081
    iget-object v0, p1, Lcom/android/settingslib/widget/d$a;->c:Ljava/lang/CharSequence;

    .line 74
    iput-object v0, p0, Lcom/android/settingslib/widget/d;->c:Ljava/lang/CharSequence;

    .line 4081
    iget-object p1, p1, Lcom/android/settingslib/widget/d$a;->d:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p1, p0, Lcom/android/settingslib/widget/d;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/widget/d$a;B)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/d;-><init>(Lcom/android/settingslib/widget/d$a;)V

    return-void
.end method
