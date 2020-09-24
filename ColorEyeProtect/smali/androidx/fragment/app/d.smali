.class public Landroidx/fragment/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/h;
.implements Landroidx/lifecycle/s;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/d$a;,
        Landroidx/fragment/app/d$c;,
        Landroidx/fragment/app/d$b;,
        Landroidx/fragment/app/d$d;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroidx/fragment/app/d$a;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field private mCalled:Z

.field mChildFragmentManager:Landroidx/fragment/app/j;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field private mContentLayoutId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroidx/fragment/app/j;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroidx/fragment/app/h;

.field mInLayout:Z

.field mInnerView:Landroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroidx/lifecycle/i;

.field mMaxState:Landroidx/lifecycle/e$b;

.field mMenuVisible:Z

.field mParentFragment:Landroidx/fragment/app/d;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetainInstanceChangedWhileDetached:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedStateRegistryController:Landroidx/savedstate/b;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroidx/fragment/app/d;

.field mTargetRequestCode:I

.field mTargetWho:Ljava/lang/String;

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroidx/fragment/app/r;

.field mViewLifecycleOwnerLiveData:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/d;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    sget-object v0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/fragment/app/d;->mMaxState:Landroidx/lifecycle/e$b;

    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/m;

    invoke-direct {p0}, Landroidx/fragment/app/d;->initLifecycle()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    iput p1, p0, Landroidx/fragment/app/d;->mContentLayoutId:I

    return-void
.end method

.method private ensureAnimationInfo()Landroidx/fragment/app/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/fragment/app/d$a;

    invoke-direct {v0}, Landroidx/fragment/app/d$a;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    return-object p0
.end method

.method private initLifecycle()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d;->mSavedStateRegistryController:Landroidx/savedstate/b;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    new-instance v1, Landroidx/fragment/app/Fragment$1;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/d;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/g;)V

    :cond_0
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/fragment/app/d;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/d;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/fragment/app/g;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/d;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/d;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Landroidx/fragment/app/d$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/d$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Landroidx/fragment/app/d$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/d$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    new-instance p2, Landroidx/fragment/app/d$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/d$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    new-instance p2, Landroidx/fragment/app/d$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/d$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method callStartTransitionListener()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/fragment/app/d$a;->q:Z

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iput-object v1, p0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/fragment/app/d$c;->a()V

    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/d;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/d;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/d;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/d;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/d;->mParentFragment:Landroidx/fragment/app/d;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mParentFragment:Landroidx/fragment/app/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/d;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getTargetFragment()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/d;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroidx/f/a/a;->a(Landroidx/lifecycle/h;)Landroidx/f/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/f/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->b(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->h()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    :goto_0
    return-object p0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->n:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->m:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroid/view/View;

    return-object p0
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->mArguments:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getChildFragmentManager()Landroidx/fragment/app/i;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has not been attached yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method getEnterTransitionCallback()Landroidx/core/app/k;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->o:Landroidx/core/app/k;

    return-object p0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->i:Ljava/lang/Object;

    return-object p0
.end method

.method getExitTransitionCallback()Landroidx/core/app/k;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->p:Landroidx/core/app/k;

    return-object p0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/i;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    return-object p0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->g()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/d;->mFragmentId:I

    return p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/d;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->b()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->C()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/core/f/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLifecycle()Landroidx/lifecycle/e;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    return-object p0
.end method

.method public getLoaderManager()Landroidx/f/a/a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/f/a/a;->a(Landroidx/lifecycle/h;)Landroidx/f/a/a;

    move-result-object p0

    return-object p0
.end method

.method getNextAnim()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget p0, p0, Landroidx/fragment/app/d$a;->d:I

    return p0
.end method

.method getNextTransition()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget p0, p0, Landroidx/fragment/app/d$a;->e:I

    return p0
.end method

.method getNextTransitionStyle()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget p0, p0, Landroidx/fragment/app/d$a;->f:I

    return p0
.end method

.method public final getParentFragment()Landroidx/fragment/app/d;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->mParentFragment:Landroidx/fragment/app/d;

    return-object p0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getExitTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->j:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final getRetainInstance()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mRetainInstance:Z

    return p0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->h:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->h:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/a;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->mSavedStateRegistryController:Landroidx/savedstate/b;

    invoke-virtual {p0}, Landroidx/savedstate/b;->a()Landroidx/savedstate/a;

    move-result-object p0

    return-object p0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/d;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->l:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method getStateAfterAnimating()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget p0, p0, Landroidx/fragment/app/d$a;->c:I

    return p0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetFragment()Landroidx/fragment/app/d;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/d;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTargetRequestCode()I
    .locals 0

    iget p0, p0, Landroidx/fragment/app/d;->mTargetRequestCode:I

    return p0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUserVisibleHint()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/h;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/m;

    return-object p0
.end method

.method public getViewModelStore()Landroidx/lifecycle/r;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/d;)Landroidx/lifecycle/r;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasOptionsMenu()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method initState()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/d;->initLifecycle()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mAdded:Z

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mRemoving:Z

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mFromLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mInLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mRestored:Z

    iput v0, p0, Landroidx/fragment/app/d;->mBackStackNesting:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    new-instance v2, Landroidx/fragment/app/j;

    invoke-direct {v2}, Landroidx/fragment/app/j;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    iput-object v1, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    iput v0, p0, Landroidx/fragment/app/d;->mFragmentId:I

    iput v0, p0, Landroidx/fragment/app/d;->mContainerId:I

    iput-object v1, p0, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mHidden:Z

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mDetached:Z

    return-void
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mAdded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDetached()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mDetached:Z

    return p0
.end method

.method public final isHidden()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mHidden:Z

    return p0
.end method

.method isHideReplaced()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-boolean p0, p0, Landroidx/fragment/app/d$a;->s:Z

    return p0
.end method

.method final isInBackStack()Z
    .locals 0

    iget p0, p0, Landroidx/fragment/app/d;->mBackStackNesting:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mInLayout:Z

    return p0
.end method

.method public final isMenuVisible()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    return p0
.end method

.method isPostponed()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-boolean p0, p0, Landroidx/fragment/app/d$a;->q:Z

    return p0
.end method

.method public final isRemoving()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->mRemoving:Z

    return p0
.end method

.method public final isResumed()Z
    .locals 1

    iget p0, p0, Landroidx/fragment/app/d;->mState:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStateSaved()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->j()Z

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method noteStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->p()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    iget-object p1, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->h()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onAttach(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/d;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/j;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->q()V

    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget p3, p0, Landroidx/fragment/app/d;->mContentLayoutId:I

    if-eqz p3, :cond_0

    iget p0, p0, Landroidx/fragment/app/d;->mContentLayoutId:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    iget-object p1, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->h()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->p()V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->r()V

    return-void

    :cond_0
    new-instance p1, Landroidx/fragment/app/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performAttach()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    new-instance v2, Landroidx/fragment/app/d$3;

    invoke-direct {v2, p0}, Landroidx/fragment/app/d$3;-><init>(Landroidx/fragment/app/d;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/d;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/d;->onAttach(Landroid/content/Context;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onAttach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHidden:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->p()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/d;->mCalled:Z

    iget-object v1, p0, Landroidx/fragment/app/d;->mSavedStateRegistryController:Landroidx/savedstate/b;

    invoke-virtual {v1, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mIsCreated:Z

    iget-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    sget-object p1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/fragment/app/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onCreate()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mPerformedCreateView:Z

    new-instance v0, Landroidx/fragment/app/r;

    invoke-direct {v0}, Landroidx/fragment/app/r;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object p1, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->a()V

    iget-object p1, p0, Landroidx/fragment/app/d;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/m;

    iget-object p0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->b()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method performDestroy()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->x()V

    iget-object v0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mIsCreated:Z

    invoke-virtual {p0}, Landroidx/fragment/app/d;->onDestroy()V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroy()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->w()V

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/d;->onDestroyView()V

    iget-boolean v1, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/f/a/a;->a(Landroidx/lifecycle/h;)Landroidx/f/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/f/a/a;->a()V

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mPerformedCreateView:Z

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDetach()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/d;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->x()V

    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDetach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Landroidx/fragment/app/d;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method performLowMemory()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->onLowMemory()V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->y()V

    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onMultiWindowModeChanged(Z)V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Z)V

    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->u()V

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/d;->onPause()V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onPause()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onPictureInPictureModeChanged(Z)V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->b(Z)V

    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method performPrimaryNavigationFragmentChanged()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/d;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/d;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/d;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/d;->onPrimaryNavigationFragmentChanged(Z)V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->z()V

    :cond_1
    return-void
.end method

.method performResume()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->p()V

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->l()Z

    const/4 v0, 0x4

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/d;->onResume()V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->t()V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()Z

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onResume()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mSavedStateRegistryController:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->o()Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->p()V

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->l()Z

    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/d;->onStart()V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->s()V

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStart()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performStop()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->v()V

    iget-object v0, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mLifecycleRegistry:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/d;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/d;->onStop()V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStop()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postponeEnterTransition()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d$a;->q:Z

    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/d$a;->q:Z

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    new-instance v1, Landroidx/fragment/app/d$1;

    invoke-direct {v1, p0}, Landroidx/fragment/app/d$1;-><init>(Landroidx/fragment/app/d;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/d;[Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requireActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to an activity."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireArguments()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have any arguments."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a context."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireFragmentManager()Landroidx/fragment/app/i;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not associated with a fragment manager."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a host."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireParentFragment()Landroidx/fragment/app/d;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getParentFragment()Landroidx/fragment/app/d;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not attached to any Fragment or host"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child Fragment, it is directly attached to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final requireView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/os/Parcelable;)V

    iget-object p0, p0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->q()V

    :cond_0
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d;->mCalled:Z

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Landroidx/fragment/app/d;->mCalled:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    sget-object p1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Landroidx/fragment/app/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d$a;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d$a;->m:Ljava/lang/Boolean;

    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->a:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/d;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(Landroidx/core/app/k;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->o:Landroidx/core/app/k;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Landroidx/core/app/k;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->p:Landroidx/core/app/k;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->i:Ljava/lang/Object;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->d()V

    :cond_0
    return-void
.end method

.method setHideReplaced(Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/fragment/app/d$a;->s:Z

    return-void
.end method

.method public setInitialSavedState(Landroidx/fragment/app/d$d;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/d$d;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/d$d;->a:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mMenuVisible:Z

    iget-boolean p1, p0, Landroidx/fragment/app/d;->mHasMenu:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->d()V

    :cond_0
    return-void
.end method

.method setNextAnim(I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/d$a;->d:I

    return-void
.end method

.method setNextTransition(II)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iput p1, v0, Landroidx/fragment/app/d$a;->e:I

    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iput p2, p0, Landroidx/fragment/app/d$a;->f:I

    return-void
.end method

.method setOnStartEnterTransitionListener(Landroidx/fragment/app/d$c;)V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iget-boolean v0, v0, Landroidx/fragment/app/d$a;->q:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/fragment/app/d;->mAnimationInfo:Landroidx/fragment/app/d$a;

    iput-object p1, p0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroidx/fragment/app/d$c;->b()V

    :cond_4
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->j:Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mRetainInstance:Z

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/d;->mRetainInstanceChangedWhileDetached:Z

    :goto_0
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->h:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->k:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->l:Ljava/lang/Object;

    return-void
.end method

.method setStateAfterAnimating(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/d$a;->c:I

    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/d;I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getTargetFragment()Landroidx/fragment/app/d;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " would create a target cycle"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-nez p1, :cond_5

    iput-object v1, p0, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    :goto_3
    iput-object v1, p0, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_6

    iget-object p1, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iput-object v1, p0, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    :goto_4
    iput p2, p0, Landroidx/fragment/app/d;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/fragment/app/d;->mState:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->mIsCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/d;)V

    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    iget v0, p0, Landroidx/fragment/app/d;->mState:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/d;->mDeferStart:Z

    iget-object v0, p0, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/d;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/d;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/d;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/d;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    move-object v1, p0

    iget-object v0, v1, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached to Activity"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    iget-object v1, v1, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->j()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/d$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/d$2;-><init>(Landroidx/fragment/app/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->callStartTransitionListener()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/d;->ensureAnimationInfo()Landroidx/fragment/app/d$a;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d$a;->q:Z

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/d;->mFragmentId:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/d;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
