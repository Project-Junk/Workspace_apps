.class final Landroidx/fragment/app/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Z

.field final j:Landroid/os/Bundle;

.field final k:Z

.field final l:I

.field m:Landroid/os/Bundle;

.field n:Landroidx/fragment/app/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/fragment/app/m$1;

    invoke-direct {v0}, Landroidx/fragment/app/m$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/m;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/m;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/m;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroidx/fragment/app/m;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->j:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Landroidx/fragment/app/m;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/m;->l:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/lang/String;

    iget-object v0, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/m;->b:Ljava/lang/String;

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mFromLayout:Z

    iput-boolean v0, p0, Landroidx/fragment/app/m;->c:Z

    iget v0, p1, Landroidx/fragment/app/d;->mFragmentId:I

    iput v0, p0, Landroidx/fragment/app/m;->d:I

    iget v0, p1, Landroidx/fragment/app/d;->mContainerId:I

    iput v0, p0, Landroidx/fragment/app/m;->e:I

    iget-object v0, p1, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/m;->f:Ljava/lang/String;

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mRetainInstance:Z

    iput-boolean v0, p0, Landroidx/fragment/app/m;->g:Z

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mRemoving:Z

    iput-boolean v0, p0, Landroidx/fragment/app/m;->h:Z

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mDetached:Z

    iput-boolean v0, p0, Landroidx/fragment/app/m;->i:Z

    iget-object v0, p1, Landroidx/fragment/app/d;->mArguments:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/fragment/app/m;->j:Landroid/os/Bundle;

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mHidden:Z

    iput-boolean v0, p0, Landroidx/fragment/app/m;->k:Z

    iget-object p1, p1, Landroidx/fragment/app/d;->mMaxState:Landroidx/lifecycle/e$b;

    invoke-virtual {p1}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/m;->l:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Landroidx/fragment/app/g;)Landroidx/fragment/app/d;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/m;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/m;->j:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/g;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object p2

    iput-object p2, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-object p2, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-object v0, p0, Landroidx/fragment/app/m;->j:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/d;->setArguments(Landroid/os/Bundle;)V

    iget-object p2, p0, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-object p2, p0, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    :goto_0
    iput-object p2, p1, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-object p2, p0, Landroidx/fragment/app/m;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/m;->c:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->mFromLayout:Z

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/d;->mRestored:Z

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget p2, p0, Landroidx/fragment/app/m;->d:I

    iput p2, p1, Landroidx/fragment/app/d;->mFragmentId:I

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget p2, p0, Landroidx/fragment/app/m;->e:I

    iput p2, p1, Landroidx/fragment/app/d;->mContainerId:I

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-object p2, p0, Landroidx/fragment/app/m;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/m;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->mRetainInstance:Z

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/m;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->mRemoving:Z

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/m;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->mDetached:Z

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/m;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->mHidden:Z

    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    invoke-static {}, Landroidx/lifecycle/e$b;->values()[Landroidx/lifecycle/e$b;

    move-result-object p2

    iget v0, p0, Landroidx/fragment/app/m;->l:I

    aget-object p2, p2, v0

    iput-object p2, p1, Landroidx/fragment/app/d;->mMaxState:Landroidx/lifecycle/e$b;

    sget-boolean p1, Landroidx/fragment/app/j;->b:Z

    if-eqz p1, :cond_2

    const-string p1, "FragmentManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Instantiated fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")}:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/fragment/app/m;->c:Z

    if-eqz v1, :cond_0

    const-string v1, " fromLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroidx/fragment/app/m;->e:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/fragment/app/m;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/m;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/m;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Landroidx/fragment/app/m;->g:Z

    if-eqz v1, :cond_3

    const-string v1, " retainInstance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Landroidx/fragment/app/m;->h:Z

    if-eqz v1, :cond_4

    const-string v1, " removing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Landroidx/fragment/app/m;->i:Z

    if-eqz v1, :cond_5

    const-string v1, " detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean p0, p0, Landroidx/fragment/app/m;->k:Z

    if-eqz p0, :cond_6

    const-string p0, " hidden"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroidx/fragment/app/m;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/m;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/m;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/fragment/app/m;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/fragment/app/m;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/m;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/m;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/fragment/app/m;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/fragment/app/m;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/m;->j:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean p2, p0, Landroidx/fragment/app/m;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p0, p0, Landroidx/fragment/app/m;->l:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
