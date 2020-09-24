.class public abstract Lcom/android/settingslib/widget/g;
.super Ljava/lang/Object;
.source "CandidateInfo.java"


# instance fields
.field public final g:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/android/settingslib/widget/g;->g:Z

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/CharSequence;
.end method

.method public abstract b()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract c()Ljava/lang/String;
.end method
