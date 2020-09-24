.class final Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;B)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->c()V

    return-void
.end method

.method public static synthetic lambda$fYCDjh92s4H5UwfLcZ8LXIbnBHM(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->a()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p1, p2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;I)V

    .line 67
    iget-boolean p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->b:Z

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->c()V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->b:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 79
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;

    move-result-object p1

    .line 1113
    iget p1, p1, Lcom/android/settings/display/PreviewPagerAdapter;->b:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->a(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;

    move-result-object p1

    new-instance v1, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$a$fYCDjh92s4H5UwfLcZ8LXIbnBHM;

    invoke-direct {v1, p0}, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$a$fYCDjh92s4H5UwfLcZ8LXIbnBHM;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;)V

    .line 1117
    iput-object v1, p1, Lcom/android/settings/display/PreviewPagerAdapter;->a:Ljava/lang/Runnable;

    goto :goto_1

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->a:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->c()V

    .line 84
    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$a;->b:Z

    return-void
.end method
