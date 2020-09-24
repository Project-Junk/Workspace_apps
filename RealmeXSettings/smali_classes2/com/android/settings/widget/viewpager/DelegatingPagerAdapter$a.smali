.class final Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter$a;
.super Landroid/database/DataSetObserver;
.source "DelegatingPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter$a;->a:Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;B)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter$a;-><init>(Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter$a;->a:Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;

    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->a(Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;)V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter$a;->onChanged()V

    return-void
.end method
